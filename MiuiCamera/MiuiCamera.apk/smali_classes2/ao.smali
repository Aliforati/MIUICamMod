.class public final synthetic Lao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lap;


# instance fields
.field public final a:Laq;

.field public final b:Lap;


# direct methods
.method public constructor <init>(Laq;Lap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao;->a:Laq;

    iput-object p2, p0, Lao;->b:Lap;

    return-void
.end method


# virtual methods
.method public final OooO00o(I)V
    .locals 3

    iget-object p1, p0, Lao;->a:Laq;

    iget-object v0, p0, Lao;->b:Lap;

    invoke-static {}, Leb;->OooO00o()V

    iget-object v1, p1, Laq;->a:Las;

    invoke-interface {v1}, Las;->OooO0OO()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Laq;->a:Las;

    invoke-interface {p1}, Las;->OooO0o0()I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Laq;->OooO0OO()Lz;

    move-result-object v1

    iget v2, v1, Lz;->a:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object p1, p1, Laq;->a:Las;

    invoke-interface {p1}, Las;->OooO0O0()I

    move-result p1

    iget v1, v1, Lz;->b:I

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lbh;->b:I

    goto :goto_1

    :cond_2
    :goto_0
    sget p1, Lbh;->l:I

    :goto_1
    invoke-interface {v0, p1}, Lap;->OooO00o(I)V

    return-void
.end method
