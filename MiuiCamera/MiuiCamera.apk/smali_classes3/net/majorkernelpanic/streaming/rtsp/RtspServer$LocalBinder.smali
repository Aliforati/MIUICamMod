.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$LocalBinder;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    return-object v0
.end method
