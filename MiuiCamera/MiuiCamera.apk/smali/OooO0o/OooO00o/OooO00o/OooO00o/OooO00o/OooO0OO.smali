.class public interface abstract LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO0O0;,
        LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO0O0:Ljava/lang/String; = "vendor.xiaomi.hardware.misys@1.0::IMiSys"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    if-eqz v3, :cond_1

    check-cast v2, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    return-object v2

    :cond_1
    new-instance v2, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO00o;

    invoke-direct {v2, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO$OooO00o;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->interfaceChain()Ljava/util/ArrayList;

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

.method public static castFrom(Landroid/os/IHwInterface;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->asInterface(Landroid/os/IHwBinder;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 1

    const-string v0, "default"

    invoke-static {v0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->getService(Ljava/lang/String;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 1

    const-string/jumbo v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->asInterface(Landroid/os/IHwBinder;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 1

    const-string/jumbo v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->asInterface(Landroid/os/IHwBinder;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;
    .locals 1

    const-string v0, "default"

    invoke-static {v0, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->getService(Ljava/lang/String;Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)I
.end method

.method public abstract OooO00o(Ljava/lang/String;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;
.end method

.method public abstract OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;
.end method

.method public abstract OooO0o0(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
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

.method public abstract setHALInstrumentation()V
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
