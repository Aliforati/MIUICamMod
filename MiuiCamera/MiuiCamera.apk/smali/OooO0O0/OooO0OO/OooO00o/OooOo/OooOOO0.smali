.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo/OooOOO0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/log/FileLogger;->OooO00o(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
