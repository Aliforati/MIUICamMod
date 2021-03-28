.class public Lcom/android/camera/customization/TintColorTableView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;
    }
.end annotation


# instance fields
.field public itemPaddingLeft:I

.field public mColorOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentSelection:I

.field public mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private addColorItem(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c012e

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintShapeView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-direct {v2}, Lcom/android/camera/customization/TintShapeView$TintShape;-><init>()V

    sget-object v3, Lcom/android/camera/customization/TintShapeView$ShapeType;->CIRCLE:Lcom/android/camera/customization/TintShapeView$ShapeType;

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->shape(Lcom/android/camera/customization/TintShapeView$ShapeType;)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v3}, Lcom/android/camera/customization/TintColor;->color()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->innerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->outerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->innerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->outerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->stroke(F)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/customization/TintShapeView;->config(Lcom/android/camera/customization/TintShapeView$TintShape;)V

    iget v2, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v4, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    if-ne p1, v4, :cond_2

    move v1, v3

    :cond_2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateLeftPadding()I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private setAccessible(Landroid/view/View;IZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/customization/TintColor;

    invoke-virtual {p2}, Lcom/android/camera/customization/TintColor;->name()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1000a7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, LOooO0O0/OooO0OO/OooO00o/OooOOOo/OooO00o;

    invoke-direct {p2, p1}, LOooO0O0/OooO0OO/OooO00o/OooOOOo/OooO00o;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    iput p2, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/camera/customization/TintColorTableView;->calculateLeftPadding()I

    move-result p1

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->addColorItem(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->setCurrent(I)V

    iget-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    invoke-interface {p1, v0}, Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;->onColorChange(I)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setCurrent(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/customization/TintShapeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    iget v1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/customization/TintShapeView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    return-void
.end method

.method public setOnColorChangeListener(Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;

    return-void
.end method
