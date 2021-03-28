.class public Lcom/ss/android/medialib/model/FaceAttribute;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/FaceAttribute$ExpressionType;,
        Lcom/ss/android/medialib/model/FaceAttribute$RacialType;
    }
.end annotation


# static fields
.field public static final EXPRESSION_NUM:I = 0x7

.field public static final RACIAL_NUM:I = 0x4


# instance fields
.field public age:F

.field public attractive:F

.field public boyProb:F

.field public expProbs:[F

.field public expType:I

.field public happyScore:F

.field public racialProbs:[F

.field public racialType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return v0
.end method

.method public getAttractive()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return v0
.end method

.method public getBoyProb()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return v0
.end method

.method public getExpProbs()[F
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-object v0
.end method

.method public getExpType()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return v0
.end method

.method public getHappyScore()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return v0
.end method

.method public getRacialType()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialType:I

    return v0
.end method

.method public getRacialrobs()[F
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialProbs:[F

    return-object v0
.end method

.method public setAge(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return-void
.end method

.method public setAttractive(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return-void
.end method

.method public setBoyProb(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return-void
.end method

.method public setExpProbs([F)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-void
.end method

.method public setExpType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return-void
.end method

.method public setHappyScore(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return-void
.end method

.method public setRacialType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialType:I

    return-void
.end method

.method public setRacialrobs([F)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialProbs:[F

    return-void
.end method
