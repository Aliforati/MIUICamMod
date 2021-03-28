.class public Lmiuix/core/util/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static sInstance:Lmiuix/core/util/ConnectivityManagerWrapper;


# instance fields
.field public mIsNetworkSupport:Lmiuix/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkSupported"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiuix/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lmiuix/core/util/ConnectivityManagerWrapper;->mIsNetworkSupport:Lmiuix/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/core/util/ConnectivityManagerWrapper;->mIsNetworkSupport:Lmiuix/reflect/Method;

    :goto_0
    return-void
.end method

.method public static getInstance()Lmiuix/core/util/ConnectivityManagerWrapper;
    .locals 1

    sget-object v0, Lmiuix/core/util/ConnectivityManagerWrapper;->sInstance:Lmiuix/core/util/ConnectivityManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/core/util/ConnectivityManagerWrapper;

    invoke-direct {v0}, Lmiuix/core/util/ConnectivityManagerWrapper;-><init>()V

    sput-object v0, Lmiuix/core/util/ConnectivityManagerWrapper;->sInstance:Lmiuix/core/util/ConnectivityManagerWrapper;

    :cond_0
    sget-object v0, Lmiuix/core/util/ConnectivityManagerWrapper;->sInstance:Lmiuix/core/util/ConnectivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public isNetworkSupported(Landroid/net/ConnectivityManager;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmiuix/core/util/ConnectivityManagerWrapper;->mIsNetworkSupport:Lmiuix/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Lmiuix/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
