.class public final enum Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingLipSyncMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingLowVideoDelayMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingVideoSmoothMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;


# instance fields
.field public nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    const/4 v1, 0x0

    const-string v2, "PlayerWorkingLipSyncMode"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingLipSyncMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    new-instance v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    const/4 v2, 0x1

    const-string v3, "PlayerWorkingLowVideoDelayMode"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingLowVideoDelayMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    new-instance v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    const/4 v3, 0x2

    const-string v4, "PlayerWorkingVideoSmoothMode"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingVideoSmoothMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    new-instance v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    const/4 v4, 0x3

    const-string v5, "PlayerWorkingDisableAudioDeviceMode"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    sget-object v6, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingLipSyncMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingLowVideoDelayMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingVideoSmoothMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->$VALUES:[Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

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

    iput p3, p0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;
    .locals 6

    sget-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->PlayerWorkingLipSyncMode:Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    invoke-static {}, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->values()[Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;
    .locals 1

    const-class v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->$VALUES:[Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    invoke-virtual {v0}, [Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/inceptionplayer/enums/PlayerWorkingMode;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
