.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;
.super LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
        "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

.field public final OooOO0:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;-><init>(Ljava/util/List;)V

    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    invoke-direct {p1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooOO0:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Ljava/lang/Object;

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    iget-object p1, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:Ljava/lang/Object;

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    invoke-virtual {v1, v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;F)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooOO0:Landroid/graphics/Path;

    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;Landroid/graphics/Path;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooOO0:Landroid/graphics/Path;

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
