.class public Lcom/ss/android/medialib/model/FaceAttributeItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public category:Ljava/lang/String;

.field public label:F

.field public score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-void
.end method

.method public setLabel(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return-void
.end method
