.class public abstract LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO0O0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hidl.base@1.0::IBase"

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

    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_14

    goto/16 :goto_8

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->notifySyspropsChanged()V

    goto/16 :goto_a

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->getDebugInfo()LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p1, p3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0(Landroid/os/HwParcel;)V

    goto/16 :goto_9

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->ping()V

    goto/16 :goto_6

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_14

    goto/16 :goto_8

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-eq v2, v3, :cond_9

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->setHALInstrumentation()V

    goto/16 :goto_a

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->getHashChain()Ljava/util/ArrayList;

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

    goto :goto_9

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    :goto_6
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    goto :goto_9

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_12
    move v3, v2

    :goto_7
    if-eqz v3, :cond_13

    :goto_8
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    goto :goto_9

    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    :goto_9
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_14
    :goto_a
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

    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0$OooO0O0;->interfaceDescriptor()Ljava/lang/String;

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
