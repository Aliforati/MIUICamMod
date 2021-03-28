.class public final synthetic LOooO0O0/OooO0oO/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field private final synthetic OooO0O0:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0oO/OooO00o/OooO00o/OooO00o;->OooO00o:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-wide p2, p0, LOooO0O0/OooO0oO/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0oO/OooO00o/OooO00o/OooO00o;->OooO00o:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iget-wide v1, p0, LOooO0O0/OooO0oO/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->OooO00o(J)V

    return-void
.end method
