.class public interface abstract Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;,
        Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Proxy;

    invoke-direct {v2, p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 1

    const-string v0, "default"

    invoke-static {v0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getService(Ljava/lang/String;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
    .locals 1

    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getService(Ljava/lang/String;Z)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract createPostProcessor(Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcSession;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCapabilities()Ljava/lang/String;
.end method

.method public abstract getDebugInfo()LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getPostprocTypes()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract notifySyspropsChanged()V
.end method

.method public abstract ping()V
.end method

.method public abstract setCapabilities(Ljava/lang/String;)V
.end method

.method public abstract setHALInstrumentation()V
.end method

.method public abstract setupVendorTags(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera/common/V1_0/VendorTagSection;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
