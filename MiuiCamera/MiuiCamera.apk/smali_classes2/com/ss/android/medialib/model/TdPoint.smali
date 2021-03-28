.class public Lcom/ss/android/medialib/model/TdPoint;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return-void
.end method
