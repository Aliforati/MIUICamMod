.class public Lcom/android/camera/DisplayAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DisplayAdapter$DisplayParameter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayAdapter"


# instance fields
.field public mDisplayRect:Lcom/android/camera/IDisplayRect;

.field public final mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget-boolean v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isInMultiWindow:Z

    if-eqz v0, :cond_0

    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayOtherPreviewRect"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/DisplayMultiWindowRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/DisplayMultiWindowRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    :goto_0
    iput-object p2, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_1

    :cond_0
    iget v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p2, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display123PreviewRect"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/Display123PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/Display123PreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p2, p2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display456PreviewRect"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/Display456PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/Display456PreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayPreviewRect"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/camera/DisplayCommonPreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p2, p1, v0}, Lcom/android/camera/DisplayCommonPreviewRect;-><init>(Landroid/content/Context;Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getBottomHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getDragDistanceFix()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragDistanceFix()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p1

    return-object p1
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabMarginVer(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabMarginVer(IZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p1

    return p1
.end method

.method public getSquareBottomCoverHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTipsMarginTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop()I

    move-result v0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public getTopBarWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopBarWidth()I

    move-result v0

    return v0
.end method

.method public getTopCoverHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result v0

    return v0
.end method
