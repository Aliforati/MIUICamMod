.class public final enum Lcom/xiaomi/magicvideosky/RecordingStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/magicvideosky/RecordingStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/magicvideosky/RecordingStatus;

.field public static final enum RecordingPaused:Lcom/xiaomi/magicvideosky/RecordingStatus;

.field public static final enum RecordingPlaying:Lcom/xiaomi/magicvideosky/RecordingStatus;

.field public static final enum RecordingStopped:Lcom/xiaomi/magicvideosky/RecordingStatus;


# instance fields
.field public nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/magicvideosky/RecordingStatus;

    const/4 v1, 0x0

    const-string v2, "RecordingStopped"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/magicvideosky/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingStopped:Lcom/xiaomi/magicvideosky/RecordingStatus;

    new-instance v0, Lcom/xiaomi/magicvideosky/RecordingStatus;

    const/4 v2, 0x1

    const-string v3, "RecordingPlaying"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/magicvideosky/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingPlaying:Lcom/xiaomi/magicvideosky/RecordingStatus;

    new-instance v0, Lcom/xiaomi/magicvideosky/RecordingStatus;

    const/4 v3, 0x2

    const-string v4, "RecordingPaused"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/magicvideosky/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingPaused:Lcom/xiaomi/magicvideosky/RecordingStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/xiaomi/magicvideosky/RecordingStatus;

    sget-object v5, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingStopped:Lcom/xiaomi/magicvideosky/RecordingStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingPlaying:Lcom/xiaomi/magicvideosky/RecordingStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/xiaomi/magicvideosky/RecordingStatus;->$VALUES:[Lcom/xiaomi/magicvideosky/RecordingStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/magicvideosky/RecordingStatus;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/magicvideosky/RecordingStatus;
    .locals 6

    sget-object v0, Lcom/xiaomi/magicvideosky/RecordingStatus;->RecordingStopped:Lcom/xiaomi/magicvideosky/RecordingStatus;

    invoke-static {}, Lcom/xiaomi/magicvideosky/RecordingStatus;->values()[Lcom/xiaomi/magicvideosky/RecordingStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/magicvideosky/RecordingStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/magicvideosky/RecordingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/magicvideosky/RecordingStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/magicvideosky/RecordingStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/magicvideosky/RecordingStatus;->$VALUES:[Lcom/xiaomi/magicvideosky/RecordingStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/magicvideosky/RecordingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/magicvideosky/RecordingStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/magicvideosky/RecordingStatus;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
