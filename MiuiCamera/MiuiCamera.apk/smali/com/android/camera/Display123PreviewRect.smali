.class public Lcom/android/camera/Display123PreviewRect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field public mLandscapeAdapter:Lcom/android/camera/Display123LandscapeAdapter;

.field public mPortraitAdapter:Lcom/android/camera/Display123PortraitAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/Display123PortraitAdapter;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/Display123PortraitAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/Display123PreviewRect;->mPortraitAdapter:Lcom/android/camera/Display123PortraitAdapter;

    new-instance v0, Lcom/android/camera/Display123LandscapeAdapter;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/Display123LandscapeAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/Display123PreviewRect;->mLandscapeAdapter:Lcom/android/camera/Display123LandscapeAdapter;

    return-void
.end method

.method private getAdapter()Lcom/android/camera/IDisplayRect;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Display123PreviewRect;->mLandscapeAdapter:Lcom/android/camera/Display123LandscapeAdapter;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Display123PreviewRect;->mPortraitAdapter:Lcom/android/camera/Display123PortraitAdapter;

    return-object v0
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getBottomHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 1

    const-string v0, "4:3"

    return-object v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getDragDistanceFix()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragDistanceFix()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p1

    return-object p1
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabMarginVer(IZ)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabMarginVer(IZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p1

    return p1
.end method

.method public getSquareBottomCoverHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTipsMarginTop()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop()I

    move-result v0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public getTopBarWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarWidth()I

    move-result v0

    return v0
.end method

.method public getTopCoverHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/Display123PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result v0

    return v0
.end method
