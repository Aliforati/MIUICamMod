.class public final Lfl;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lds;


# instance fields
.field public final a:Lds;


# direct methods
.method public constructor <init>(Lds;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lfl;->a:Lds;

    return-void
.end method


# virtual methods
.method public final OooO0O0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfl;->a:Lds;

    invoke-interface {v0, p1}, Lds;->OooO0O0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0Oo()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lfl;->a:Lds;

    invoke-interface {v0}, Lds;->OooO0Oo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o0()Lds;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfl;->a:Lds;

    check-cast v0, Ldr;

    invoke-virtual {v0, p1}, Ldr;->OooO0OO(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lfk;

    invoke-direct {v0, p0}, Lfk;-><init>(Lfl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lfj;

    invoke-direct {v0, p0, p1}, Lfj;-><init>(Lfl;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lfl;->a:Lds;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
