.class public Lcom/android/camera/Display123PortraitAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Display123PortraitAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 3

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    goto :goto_0
.end method

.method public getBottomHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 1

    const-string v0, "4:3"

    return-object v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    move v1, v0

    move v2, v1

    :goto_0
    move v3, v2

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    int-to-double v3, v2

    const-wide v5, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v3, v5

    double-to-int v3, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    mul-int/lit8 v3, v2, 0x9

    div-int/lit8 v3, v3, 0x10

    :goto_1
    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    move v7, v1

    move v1, v0

    move v0, v7

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    move v3, v1

    move v1, v0

    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uiStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDisplayRect"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getDragDistanceFix()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    goto :goto_0
.end method

.method public getMarginEnd()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public getMarginStart()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopBarHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v4, v4, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    fill-array-data p1, :array_1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0f0034
        0x7f0f002e
    .end array-data

    :array_1
    .array-data 4
        0x7f0f0031
        0x7f0f002b
    .end array-data
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method public getMoreModeTabMarginVer(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/Display123PortraitAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07043c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p2, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/Display123PortraitAdapter;->getMoreModeTabRow(IZ)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    div-int/2addr p2, p1

    return p2
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomHeight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getTipsMarginTop()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070612

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTopBarHeight()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopBarWidth()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/Display123PortraitAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getTopMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
