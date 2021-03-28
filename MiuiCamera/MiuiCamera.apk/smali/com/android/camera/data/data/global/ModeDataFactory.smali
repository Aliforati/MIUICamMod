.class public Lcom/android/camera/data/data/global/ModeDataFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile singleton:Lcom/android/camera/data/data/global/ModeDataFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;
    .locals 2

    sget-object v0, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/data/data/global/ModeDataFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/data/data/global/ModeDataFactory;

    invoke-direct {v1}, Lcom/android/camera/data/data/global/ModeDataFactory;-><init>()V

    sput-object v1, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    return-object v0
.end method

.method private ultraPixelModuleName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->Oooo0o0:Z

    const v2, 0x7f100433

    if-eqz v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooOoO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o0000()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v1, 0x7f100432

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const v1, 0x7f100435

    goto :goto_0

    :cond_3
    const v1, 0x7f100434

    goto :goto_0
.end method


# virtual methods
.method public createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa6

    if-eq p1, v2, :cond_a

    const/16 v2, 0xa7

    if-eq p1, v2, :cond_9

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_8

    const/16 v2, 0xd6

    if-eq p1, v2, :cond_7

    const/16 v2, 0xb7

    if-eq p1, v2, :cond_6

    const/16 v2, 0xb8

    if-eq p1, v2, :cond_5

    const/16 v2, 0xcc

    if-eq p1, v2, :cond_3

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfe

    const/4 v2, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unSupport mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080300

    const v2, 0x7f0805af

    const v3, 0x7f100480

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802ea

    const v2, 0x7f0805aa

    const v3, 0x7f100424

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080301

    const v2, 0x7f0805b9

    const v3, 0x7f10043b

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802fc

    const v2, 0x7f0805b8

    const v3, 0x7f100439

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802e8

    const v2, 0x7f0805a9

    const v3, 0x7f10045c

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802eb

    const v2, 0x7f0805ab

    const v3, 0x7f100675

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelIcon()I

    move-result v0

    const v2, 0x7f0805b4

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ModeDataFactory;->ultraPixelModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802fb

    const v2, 0x7f0805b7

    const v3, 0x7f100430

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_8
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f9

    const v2, 0x7f0805b5

    const v3, 0x7f100436

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802e9

    const v3, 0x7f100423

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :pswitch_a
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802ff

    const v3, 0x7f10043a

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802ed

    const v2, 0x7f0805ad

    const v3, 0x7f100425

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f10042e

    invoke-direct {p1, v1, v2, v2, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f3

    const v2, 0x7f0805a8

    const v3, 0x7f100129

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0802ec

    const v3, 0x7f0805ac

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00O000()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f10042f

    goto :goto_0

    :cond_4
    const v0, 0x7f100676

    :goto_0
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f2

    const v2, 0x7f0805b1

    const v3, 0x7f10042c

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_6
    :pswitch_b
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f0

    const v2, 0x7f0805b0

    const v3, 0x7f10042b

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_7
    :pswitch_c
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f4

    const v2, 0x7f0805b2

    const v3, 0x7f100603

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_8
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802fd

    const v2, 0x7f0805ae

    const v3, 0x7f1006fc

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_9
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802fa

    const v2, 0x7f0805b6

    const v3, 0x7f100437

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    :cond_a
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802f5

    const v2, 0x7f0805b3

    const v3, 0x7f100431

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_b
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xba
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
