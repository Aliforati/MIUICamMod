.class public LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "**>;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    move-result-object p1

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    return-object p1
.end method

.method public final OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0OO:Ljava/lang/Object;

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO()V

    :cond_0
    return-void
.end method
