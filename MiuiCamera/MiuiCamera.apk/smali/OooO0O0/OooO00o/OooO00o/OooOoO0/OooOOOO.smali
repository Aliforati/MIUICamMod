.class public LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
