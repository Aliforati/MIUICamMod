.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO00o/OooO0O0/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->OooO00o(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
