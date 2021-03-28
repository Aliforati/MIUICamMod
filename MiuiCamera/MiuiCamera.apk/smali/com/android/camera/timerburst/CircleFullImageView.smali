.class public Lcom/android/camera/timerburst/CircleFullImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field public colorRGBA:I

.field public mContext:Landroid/content/Context;

.field public mPaint:Landroid/graphics/Paint;

.field public mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method private initGlobalValue()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iget-object v3, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCircleRadius(I)F
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070578

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr p1, v1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07057a

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070576

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public updateRadiusView(FI)V
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iput p2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->colorRGBA:I

    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateView(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CircleFullImageView;->getCircleRadius(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iput p2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->colorRGBA:I

    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
