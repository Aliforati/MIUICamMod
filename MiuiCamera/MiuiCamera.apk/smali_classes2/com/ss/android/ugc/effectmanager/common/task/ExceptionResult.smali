.class public Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public errorCode:I

.field public exception:Ljava/lang/Exception;

.field public msg:Ljava/lang/String;

.field public remoteIp:Ljava/lang/String;

.field public requestUrl:Ljava/lang/String;

.field public selectedHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/model/NetException;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/ss/android/ugc/effectmanager/common/model/NetException;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/common/model/NetException;->getStatus_code()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    goto :goto_2

    :cond_0
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/common/exception/StatusCodeException;->getStatusCode()I

    move-result p2

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lorg/json/JSONException;

    if-eqz p2, :cond_2

    const/16 p2, 0x2718

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroid/accounts/NetworkErrorException;

    if-eqz p2, :cond_3

    const/16 p2, 0x2712

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/UrlNotExistException;

    if-eqz p2, :cond_4

    const/16 p2, 0x271f

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/UnzipException;

    if-eqz p2, :cond_5

    const/16 p2, 0x271d

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/ss/android/ugc/effectmanager/common/exception/MD5Exception;

    if-eqz p2, :cond_6

    const/16 p2, 0x271a

    goto :goto_0

    :cond_6
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_7

    const/16 p2, 0x271c

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "network unavailable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x271b

    goto :goto_0

    :cond_8
    const/16 p2, 0x2715

    goto :goto_0

    :cond_9
    const/4 p1, 0x1

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/common/ErrorConstants;->APIErrorHandle(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    const/16 v1, 0x7d

    const-string v2, ", remoteIp=\'"

    const-string v3, ", selectedHost=\'"

    const-string v4, ", requestUrl=\'"

    const-string v5, ", msg=\'"

    const-string v6, "ExceptionResult{errorCode="

    const/16 v7, 0x27

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->errorCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->selectedHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;->remoteIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
