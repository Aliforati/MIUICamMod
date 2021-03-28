.class public Lcom/google/android/libraries/lens/lenslite/LensliteUiController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/lens/lenslite/LensliteUiController$FocusType;,
        Lcom/google/android/libraries/lens/lenslite/LensliteUiController$VerticalPlacement;,
        Lcom/google/android/libraries/lens/lenslite/LensliteUiController$ResultType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LensliteUiController"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(ILandroid/graphics/PointF;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", focusLocation = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LensliteUiController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setChipDrawable(I)V
    .locals 0

    return-void
.end method

.method public setChipLocation(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public setChipSidePadding(I)V
    .locals 0

    return-void
.end method

.method public setChipTextStyle(I)V
    .locals 0

    return-void
.end method

.method public setCloseButton(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setExternalChipContent(Lcom/google/android/libraries/lens/lenslite/ExternalChipContent;)V
    .locals 0

    return-void
.end method

.method public setIconForResultType(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    return-void
.end method

.method public setLensSuggestionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLensliteUiVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setOobeLocation(IF)V
    .locals 0

    return-void
.end method

.method public setOobeTextStyles(III)V
    .locals 0

    return-void
.end method

.method public setPostCaptureEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setTouchAndHoldEnabled(Z)V
    .locals 0

    return-void
.end method
