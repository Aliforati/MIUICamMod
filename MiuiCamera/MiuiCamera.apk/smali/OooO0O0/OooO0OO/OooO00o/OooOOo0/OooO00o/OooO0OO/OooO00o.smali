.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0OO/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
