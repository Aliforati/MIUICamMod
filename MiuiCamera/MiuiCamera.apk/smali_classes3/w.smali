.class public final Lw;
.super Lde;
.source ""

# interfaces
.implements Lei;


# static fields
.field public static final a:Lw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw;

    invoke-direct {v0}, Lw;-><init>()V

    sput-object v0, Lw;->a:Lw;

    const-class v1, Lw;

    invoke-static {v1, v0}, Lde;->OooO00o(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde;-><init>()V

    sget-object v0, Leq;->b:Leq;

    return-void
.end method


# virtual methods
.method public final OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    sget-object p1, Lw;->a:Lw;

    return-object p1

    :cond_0
    new-instance p1, Lv;

    invoke-direct {p1}, Lv;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lw;

    invoke-direct {p1}, Lw;-><init>()V

    return-object p1

    :cond_2
    sget-object p1, Lw;->a:Lw;

    const-string p2, "\u0001\u0000"

    invoke-static {p1, p2, v0}, Lde;->OooO00o(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
