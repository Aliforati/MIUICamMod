.class public LOooO0O0/OooO00o/OooO00o/OooOOo0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Z

.field public final OooO0O0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO00o;-><init>(LOooO0O0/OooO00o/OooO00o/OooOOo0;)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0Oo:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(Ljava/lang/String;F)V
    .locals 2

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    if-nez v0, :cond_1

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;-><init>()V

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o(F)V

    const-string v0, "__container"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;

    invoke-interface {v0, p2}, LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;->OooO00o(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    iput-boolean p1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    return-void
.end method

.method public OooO0O0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;

    invoke-virtual {v2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0Oo:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOOo0$OooO0O0;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO()V
    .locals 7

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOOo0;->OooO0O0()Ljava/util/List;

    move-result-object v0

    const-string v1, "LOTTIE"

    const-string v2, "Render times:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v5, v2

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "\t\t%30s:%.2f"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
