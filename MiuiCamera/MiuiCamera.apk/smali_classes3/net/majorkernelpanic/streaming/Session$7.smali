.class public Lnet/majorkernelpanic/streaming/Session$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/Session;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->switchCamera()V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/Session;->access$100(Lnet/majorkernelpanic/streaming/Session;)V
    :try_end_0
    .catch Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v3, v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const/4 v3, 0x4

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2, v1, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    goto :goto_2

    :catch_4
    move-exception v0

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$7;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    :cond_0
    :goto_2
    return-void
.end method
