.class public Lmiuix/view/animation/BackEaseInOutInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final mOvershot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/view/animation/BackEaseInOutInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    iget v0, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x3fd9cd60

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    const/high16 v4, 0x3f000000    # 0.5f

    const-wide v5, 0x3ff8666666666666L    # 1.525

    if-gez v3, :cond_1

    float-to-double v0, v0

    mul-double/2addr v0, v5

    double-to-float v0, v0

    mul-float v1, p1, p1

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    return v1

    :cond_1
    sub-float/2addr p1, v1

    float-to-double v7, v0

    mul-double/2addr v7, v5

    double-to-float v0, v7

    mul-float v3, p1, p1

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v4

    return v3
.end method
