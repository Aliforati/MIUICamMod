.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode$SecurityModeVerifier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityModeVerifier"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode$SecurityModeVerifier;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode$SecurityModeVerifier;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode$SecurityModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;->forNumber(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
