.class public final synthetic LOooO0O0/OooO0OO/OooO0O0/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO0O0/OooO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO0O0/OooO0o;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO0O0/OooO0o;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO0O0/OooO0o;->OooO00o:LOooO0O0/OooO0OO/OooO0O0/OooO0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->OooO00o(I)Z

    move-result p1

    return p1
.end method
