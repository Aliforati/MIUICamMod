.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO0OO:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOO0O;->OooO0OO:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
