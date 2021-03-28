.class public Lcom/ss/android/medialib/model/Enigma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/Enigma$CodeType;
    }
.end annotation


# instance fields
.field public points:[Lcom/ss/android/medialib/model/TdPoint;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()[Lcom/ss/android/medialib/model/TdPoint;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/Enigma;->points:[Lcom/ss/android/medialib/model/TdPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/Enigma;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ss/android/medialib/model/Enigma;->type:I

    return v0
.end method

.method public setPoints([Lcom/ss/android/medialib/model/TdPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/Enigma;->points:[Lcom/ss/android/medialib/model/TdPoint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/Enigma;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/Enigma;->type:I

    return-void
.end method
