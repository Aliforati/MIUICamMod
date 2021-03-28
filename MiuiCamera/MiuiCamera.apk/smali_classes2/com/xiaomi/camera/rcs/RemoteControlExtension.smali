.class public Lcom/xiaomi/camera/rcs/RemoteControlExtension;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/RemoteControlExtension$LayoutType;,
        Lcom/xiaomi/camera/rcs/RemoteControlExtension$RecordingState;
    }
.end annotation


# static fields
.field public static final CUSTOM_CALLBACK_VIDEO_CAST_STATE_CHANGED:Ljava/lang/String; = "com.xiaomi.camera.rcs.videoCastStateChanged"

.field public static final CUSTOM_REQUEST_SET_CAPTURING_MODE:Ljava/lang/String; = "com.xiaomi.camera.rcs.setCapturingMode"

.field public static final LAYOUT_TYPE_PBP:I = 0x0

.field public static final LAYOUT_TYPE_PIP:I = 0x1

.field public static final PAYLOAD_KEY_IS_GROUP_OWNER:Ljava/lang/String; = "com.xiaomi.camera.rcs.isGroupOwner"

.field public static final RECORDING_STATE_PAUSED:I = 0x2

.field public static final RECORDING_STATE_RECORDING:I = 0x1

.field public static final RECORDING_STATE_RESUME:I = 0x3

.field public static final RECORDING_STATE_STANDBY:I = 0x0

.field public static final RECORDING_STATE_STOP:I = 0x4

.field public static final RTSP_EXTENDED_HEADER_LAYOUT_TYPE:Ljava/lang/String; = "layouttype"

.field public static final RTSP_EXTENDED_HEADER_RECORDING_STATE:Ljava/lang/String; = "recstate"

.field public static final RTSP_EXTENDED_HEADER_SEQUENCE_ID:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutType(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "layouttype"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRecordingState(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "recstate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isGroupOwner(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setIsGroupOwner(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "com.xiaomi.camera.rcs.isGroupOwner"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLayoutType(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "layouttype"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRecordingState(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "recstate"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
