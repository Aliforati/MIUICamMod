.class public Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;
.super Lcom/android/camera/watermark/BaseWaterMarkDrawable;
.source ""


# static fields
.field public static final GENDER_FEMALE_RECT_COLOR:I = -0x11957f

.field public static final GENDER_MALE_RECT_COLOR:I = -0x90480c


# instance fields
.field public mFaceRectPaint:Landroid/graphics/Paint;

.field public mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field public mFemaleHonPadding:I

.field public mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field public mMaleHonPadding:I

.field public mSexFemaleIc:Landroid/graphics/drawable/Drawable;

.field public mSexMaleIc:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFaceRectPaint(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/Paint;
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/watermark/WaterMarkData;->isFemale()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const v0, -0x11957f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const v0, -0x90480c

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getHonPadding(Lcom/android/camera/watermark/WaterMarkData;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/watermark/WaterMarkData;->isFemale()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFemaleHonPadding:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mMaleHonPadding:I

    :goto_0
    return p1
.end method

.method public getTopBackgroundDrawable(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/watermark/WaterMarkData;->isFemale()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public getTopIndicatorDrawable(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/watermark/WaterMarkData;->isFemale()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public initBeforeDraw()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080383

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const v1, -0x90480c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mMaleHonPadding:I

    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mFemaleHonPadding:I

    iget-object v0, p0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mFacePopupBottom:I

    return-void
.end method
