.class public final Lcom/ss/android/vesdk/VEDuetSettings;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mAlpha:F

.field public mDuetAudioPath:Ljava/lang/String;

.field public mDuetVideoPath:Ljava/lang/String;

.field public mIsFitMode:Z

.field public mXInPercent:F

.field public mYInPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    iput p4, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    iput p5, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    iput-boolean p6, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    return v0
.end method

.method public getDuetAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuetVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFitMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return v0
.end method

.method public getXInPercent()F
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    return v0
.end method

.method public getYInPercent()F
    .locals 1

    iget v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    return v0
.end method
