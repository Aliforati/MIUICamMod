.class public Lcom/ss/android/medialib/model/EnigmaResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public result:[Lcom/ss/android/medialib/model/Enigma;

.field public zoomFactor:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()[Lcom/ss/android/medialib/model/Enigma;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-object v0
.end method

.method public setResult([Lcom/ss/android/medialib/model/Enigma;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-void
.end method
