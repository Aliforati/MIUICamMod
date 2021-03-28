.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/ColorStyle;
.source ""


# instance fields
.field public mTintMode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    invoke-direct {p0, p1, v0}, Lmiuix/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method private getView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isInvalid(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public doSetConfig(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/animation/styles/PropertyStyle;->doSetConfig(Lmiuix/animation/base/AnimConfigLink;)V

    iget-object v0, p0, Lmiuix/animation/styles/PropertyStyle;->mToTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/animation/styles/PropertyStyle;->mProperty:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->getTintMode(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)I

    move-result p1

    iput p1, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mTintMode:I

    return-void
.end method

.method public onEnd()V
    .locals 2

    invoke-super {p0}, Lmiuix/animation/styles/PropertyStyle;->onEnd()V

    invoke-direct {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lmiuix/animation/styles/ColorStyle;->onStart()V

    invoke-direct {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    iget v1, p0, Lmiuix/animation/styles/ForegroundColorStyle;->mTintMode:I

    invoke-virtual {v0, p0, v1}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(Lmiuix/animation/styles/PropertyStyle;I)V

    return-void
.end method
