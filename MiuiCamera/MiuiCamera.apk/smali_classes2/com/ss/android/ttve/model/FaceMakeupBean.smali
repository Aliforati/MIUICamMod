.class public Lcom/ss/android/ttve/model/FaceMakeupBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mLipStickIntensity:F

.field public mNasolabialIntensity:F

.field public mPouchIntensity:F

.field public mResPath:Ljava/lang/String;

.field public mblusherIntensity:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/model/FaceMakeupBean;-><init>(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    iput p2, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    iput p3, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttve/model/FaceMakeupBean;-><init>(Ljava/lang/String;FF)V

    iput p4, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    iput p5, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return-void
.end method


# virtual methods
.method public getBlusherIntensity()F
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return v0
.end method

.method public getLipStickIntensity()F
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    return v0
.end method

.method public getNasolabialIntensity()F
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    return v0
.end method

.method public getPouchIntensity()F
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return v0
.end method

.method public getResPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    return-object v0
.end method

.method public setBlusherIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mblusherIntensity:F

    return-void
.end method

.method public setLipStickIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mLipStickIntensity:F

    return-void
.end method

.method public setNasolabialIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mNasolabialIntensity:F

    return-void
.end method

.method public setPouchIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mPouchIntensity:F

    return-void
.end method

.method public setResPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/model/FaceMakeupBean;->mResPath:Ljava/lang/String;

    return-void
.end method
