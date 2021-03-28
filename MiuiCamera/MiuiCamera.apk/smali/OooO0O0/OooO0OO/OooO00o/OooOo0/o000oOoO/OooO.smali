.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooO;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO0O0(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
