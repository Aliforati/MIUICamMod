.class public Lcom/android/camera/resource/BaseRequestException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public mErrorType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/resource/BaseRequestException;->mErrorType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/camera/resource/BaseRequestException;->mErrorType:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/resource/BaseRequestException;->mErrorType:I

    return v0
.end method
