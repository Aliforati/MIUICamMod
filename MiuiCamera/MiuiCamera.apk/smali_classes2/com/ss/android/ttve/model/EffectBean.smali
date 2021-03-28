.class public Lcom/ss/android/ttve/model/EffectBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mResPath:Ljava/lang/String;

.field public mStickerId:I

.field public mUseAmazing:Z

.field public mWithoutFace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/model/EffectBean;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/ttve/model/EffectBean;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return-void
.end method


# virtual methods
.method public getResPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerId()I
    .locals 1

    iget v0, p0, Lcom/ss/android/ttve/model/EffectBean;->mStickerId:I

    return v0
.end method

.method public isWithoutFace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return v0
.end method

.method public setResPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mResPath:Ljava/lang/String;

    return-void
.end method

.method public setStickerId(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mStickerId:I

    return-void
.end method

.method public setWithoutFace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ttve/model/EffectBean;->mWithoutFace:Z

    return-void
.end method
