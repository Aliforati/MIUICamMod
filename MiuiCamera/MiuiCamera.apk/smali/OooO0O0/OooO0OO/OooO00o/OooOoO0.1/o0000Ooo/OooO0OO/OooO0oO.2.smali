.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0000Ooo/OooO0OO/OooO0oO;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
