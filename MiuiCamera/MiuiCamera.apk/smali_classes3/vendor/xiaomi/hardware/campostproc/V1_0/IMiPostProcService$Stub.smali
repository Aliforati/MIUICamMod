.class public abstract Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
    .locals 3

    new-instance v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    const/4 v1, 0x0

    iput v1, v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_21

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1d

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1a

    const/4 v4, 0x4

    if-eq p1, v4, :cond_17

    const/4 v4, 0x5

    if-eq p1, v4, :cond_14

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_11

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_24

    goto/16 :goto_f

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    goto/16 :goto_f

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->notifySyspropsChanged()V

    goto/16 :goto_11

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    goto/16 :goto_f

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->getDebugInfo()LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p1, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0(Landroid/os/HwParcel;)V

    goto/16 :goto_10

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    goto/16 :goto_f

    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->ping()V

    goto/16 :goto_b

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_24

    goto/16 :goto_f

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-eq v2, v3, :cond_9

    goto/16 :goto_f

    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->setHALInstrumentation()V

    goto/16 :goto_11

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    goto/16 :goto_f

    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v2, p4, :cond_d

    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_c

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_c

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_10

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    goto/16 :goto_f

    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    goto/16 :goto_f

    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    goto :goto_b

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    if-eqz v3, :cond_13

    goto/16 :goto_f

    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto/16 :goto_10

    :cond_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    goto :goto_7

    :cond_15
    move v3, v2

    :goto_7
    if-eqz v3, :cond_16

    goto/16 :goto_f

    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getCapabilities()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18

    goto :goto_9

    :cond_18
    move v3, v2

    :goto_9
    if-eqz v3, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->setCapabilities(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    goto :goto_a

    :cond_1b
    move v3, v2

    :goto_a
    if-eqz v3, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/hardware/camera/common/V1_0/VendorTagSection;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->setupVendorTags(Ljava/util/ArrayList;)V

    :goto_b
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    goto :goto_10

    :cond_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e

    goto :goto_c

    :cond_1e
    move v3, v2

    :goto_c
    if-eqz v3, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;

    invoke-direct {p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;-><init>()V

    invoke-virtual {p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;->asInterface(Landroid/os/IHwBinder;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->createPostProcessor(Lvendor/xiaomi/hardware/campostproc/V1_0/CreateSessionParams;Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks;)Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcSession;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez p1, :cond_20

    const/4 p1, 0x0

    goto :goto_d

    :cond_20
    invoke-interface {p1}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcSession;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_d
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    goto :goto_10

    :cond_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22

    goto :goto_e

    :cond_22
    move v3, v2

    :goto_e
    if-eqz v3, :cond_23

    :goto_f
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    goto :goto_10

    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService;->getPostprocTypes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    :goto_10
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_24
    :goto_11
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.campostproc@1.0::IMiPostProcService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
