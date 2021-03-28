.class public Lcom/android/camera/data/data/config/ComponentManuallyET;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentManuallyET"


# instance fields
.field public mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

.field public mSupperEISEnabled:Z

.field public mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xa7

    const/16 v2, 0xb4

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_4

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getExposureTimeRange()Landroid/util/Range;

    move-result-object p2

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p2, 0x1

    :goto_1
    array-length v5, p1

    if-ge p2, v5, :cond_4

    aget-object v5, p1, p2

    iget-object v6, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-gtz v8, :cond_3

    cmp-long v6, v6, v3

    if-gtz v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00ooOO0()Z

    move-result v1

    const v2, 0x7f10052e

    const-string v6, "2000000"

    const v7, 0x7f100540

    const/16 v9, 0x9

    const/16 v10, 0x8

    const-string v11, "1000000"

    const v12, 0x7f10051a

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const-string v3, "0"

    const v4, 0x7f10054e

    const/16 v20, 0x0

    const/4 v5, -0x1

    if-nez v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00oo0O()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v8, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v8, v1, v20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v12, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "4000000"

    invoke-direct {v3, v5, v5, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v17

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f10051c

    const-string v4, "8000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100544

    const-string v4, "16667000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v15

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100533

    const-string v4, "33333000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v14

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100520

    const-string v4, "66667000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100548

    const-string v4, "125000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100539

    const-string v4, "250000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100525

    const-string v4, "500000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100528

    const-string v4, "1000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100532

    const-string v4, "2000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f10053d

    const-string v4, "4000000000"

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10054c

    const-string v6, "8000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100524

    const-string v6, "16000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100537

    const-string v6, "32000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x35

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v8, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v8, v1, v20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053c

    const-string v8, "250000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100536

    const-string v8, "312500"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10052f

    const-string v8, "400000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10052b

    const-string v8, "500000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100523

    const-string v8, "625000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10051d

    const-string v8, "800000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v12, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v13

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10054a

    const-string v8, "1250000"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100545

    const-string v8, "1562500"

    invoke-direct {v3, v5, v5, v4, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v9

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v7, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053b

    const-string v6, "2500000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100535

    const-string v6, "3125000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "4000000"

    invoke-direct {v3, v5, v5, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10052a

    const-string v6, "5000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100522

    const-string v6, "6250000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10051c

    const-string v6, "8000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100519

    const-string v6, "10000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100549

    const-string v6, "12500000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100544

    const-string v6, "16670000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053f

    const-string v6, "20000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053a

    const-string v6, "25000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100533

    const-string v6, "33300000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10052d

    const-string v6, "40000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100529

    const-string v6, "50000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100520

    const-string v6, "66700000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10051e

    const-string v6, "76900000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100518

    const-string v6, "100000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100548

    const-string v6, "125000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100543

    const-string v6, "166700000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053e

    const-string v6, "200000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100539

    const-string v6, "250000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100513

    const-string v6, "300000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100514

    const-string v6, "400000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100515

    const-string v6, "500000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100516

    const-string v6, "600000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100517

    const-string v6, "800000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100528

    const-string v6, "1000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100526

    const-string v6, "1300000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100527

    const-string v6, "1600000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100532

    const-string v6, "2000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100531

    const-string v6, "2500000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100538

    const-string v6, "3200000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10053d

    const-string v6, "4000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100542

    const-string v6, "5000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100547

    const-string v6, "6000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10054c

    const-string v6, "8000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10051b

    const-string v6, "10000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10051f

    const-string v6, "13000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100521

    const-string v6, "15000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f10052c

    const-string v6, "20000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100530

    const-string v6, "25000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100534

    const-string v6, "30000000000"

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    :goto_1
    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v1
.end method

.method private getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mSupperEISEnabled:Z

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f10054e

    const/4 v4, -0x1

    const-string v5, "0"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f10053c

    const-string v6, "250000"

    invoke-direct {v2, v4, v4, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f100536

    const-string v7, "312500"

    invoke-direct {v2, v4, v4, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f10052f

    const-string v8, "400000"

    invoke-direct {v2, v4, v4, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f10052b

    const-string v9, "500000"

    invoke-direct {v2, v4, v4, v8, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f100523

    const-string v10, "625000"

    invoke-direct {v2, v4, v4, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x5

    aput-object v2, v1, v9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f10051d

    const-string v11, "800000"

    invoke-direct {v2, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v10, 0x6

    aput-object v2, v1, v10

    const/4 v2, 0x7

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10051a

    const-string v13, "1000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x8

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10054a

    const-string v13, "1250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x9

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100545

    const-string v13, "1562500"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xa

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100540

    const-string v13, "2000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xb

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10053b

    const-string v13, "2500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xc

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100535

    const-string v13, "3125000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xd

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10052e

    const-string v13, "4000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xe

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10052a

    const-string v13, "5000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0xf

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100522

    const-string v13, "6250000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x10

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10051c

    const-string v13, "8000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x11

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100519

    const-string v13, "10000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x12

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100549

    const-string v13, "12500000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x13

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100544

    const-string v13, "16670000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x14

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10053f

    const-string v13, "20000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x15

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f10053a

    const-string v13, "25000000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    const/16 v2, 0x16

    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    const v12, 0x7f100533

    const-string v13, "33300000"

    invoke-direct {v11, v4, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_1

    new-array v0, v10, [Lcom/android/camera/data/data/ComponentDataItem;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f10052d

    const-string v11, "40000000"

    invoke-direct {v1, v4, v4, v10, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100529

    const-string v10, "50000000"

    invoke-direct {v1, v4, v4, v3, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100520

    const-string v5, "66700000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f10051e

    const-string v5, "76900000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100518

    const-string v5, "100000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f100548

    const-string v5, "125000000"

    invoke-direct {v1, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/data/data/ComponentDataItem;

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyET;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    :goto_0
    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/camera/data/data/config/ComponentManuallyET;->TAG:Ljava/lang/String;

    const-string p2, "checkValueValid: invalid value!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 8

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f100463

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f100698

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const-string p1, "pref_qc_camera_pro_video_exposuretime_key"

    return-object p1

    :cond_0
    const-string p1, "pref_qc_camera_fastmotion_pro_exposuretime_key"

    return-object p1

    :cond_1
    const-string p1, "pref_qc_camera_exposuretime_key"

    return-object p1
.end method

.method public getMillSecond(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public getValueDisplayString(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget p1, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "mode %1$d, invalid value %2$s for %3$s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLongExpose(I)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x17d78400

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public resetComponentValue(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
