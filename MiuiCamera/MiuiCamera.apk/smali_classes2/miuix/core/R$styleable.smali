.class public final Lmiuix/core/R$styleable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Level:[I

.field public static final Level_maxLevel:I = 0x0

.field public static final Level_minLevel:I = 0x1

.field public static final Level_targetLevel:I = 0x2

.field public static final MiuixManifest:[I

.field public static final MiuixManifestModule:[I

.field public static final MiuixManifestModule_dependencyType:I = 0x0

.field public static final MiuixManifestModule_maxLevel:I = 0x1

.field public static final MiuixManifestModule_minLevel:I = 0x2

.field public static final MiuixManifestModule_name:I = 0x3

.field public static final MiuixManifestModule_targetLevel:I = 0x4

.field public static final MiuixManifestUsesSdk:[I

.field public static final MiuixManifestUsesSdk_maxLevel:I = 0x0

.field public static final MiuixManifestUsesSdk_minLevel:I = 0x1

.field public static final MiuixManifestUsesSdk_targetLevel:I = 0x2

.field public static final MiuixManifest_level:I = 0x0

.field public static final MiuixManifest_moduleContent:I = 0x1

.field public static final MiuixManifest_name:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lmiuix/core/R$styleable;->Level:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lmiuix/core/R$styleable;->MiuixManifest:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lmiuix/core/R$styleable;->MiuixManifestModule:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiuix/core/R$styleable;->MiuixManifestUsesSdk:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040129
        0x7f040131
        0x7f0401ad
    .end array-data

    :array_1
    .array-data 4
        0x7f0400fc
        0x7f040134
        0x7f040136
    .end array-data

    :array_2
    .array-data 4
        0x7f04008f
        0x7f040129
        0x7f040131
        0x7f040136
        0x7f0401ad
    .end array-data

    :array_3
    .array-data 4
        0x7f040129
        0x7f040131
        0x7f0401ad
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
