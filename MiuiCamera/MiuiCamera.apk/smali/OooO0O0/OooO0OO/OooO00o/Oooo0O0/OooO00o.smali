.class public final synthetic LOooO0O0/OooO0OO/OooO00o/Oooo0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0O0/OooO00o;->OooO00o:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, LOooO0O0/OooO0OO/OooO00o/Oooo0O0/OooO00o;->OooO00o:J

    invoke-static {v0, v1}, Lcom/android/camera/upgrade/UpgradeManager;->OooO0O0(J)V

    return-void
.end method
