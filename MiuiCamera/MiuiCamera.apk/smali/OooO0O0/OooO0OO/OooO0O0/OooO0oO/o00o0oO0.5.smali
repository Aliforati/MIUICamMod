.class public final synthetic LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;->OooO00o:LOooO0O0/OooO0OO/OooO0O0/OooO0oO/o00o0oO0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->o0Oo0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method