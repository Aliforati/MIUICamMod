.class public LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:F = 100.0f

.field public static final OooO0O0:Landroid/view/animation/Interpolator;

.field public static OooO0OO:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field

.field public static OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0O0:Landroid/view/animation/Interpolator;

    const-string/jumbo v1, "t"

    const-string/jumbo v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string/jumbo v7, "to"

    const-string/jumbo v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "F",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
            "TT;>;)",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move v8, v2

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p1, v7}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object v10

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    move v2, v7

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    invoke-interface {p3, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-interface {p3, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v7

    double-to-float v8, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    if-eqz v2, :cond_2

    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0O0:Landroid/view/animation/Interpolator;

    move-object v7, p1

    move-object v6, v5

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget p1, v3, Landroid/graphics/PointF;->x:F

    neg-float p3, p2

    invoke-static {p1, p3, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    iput p1, v3, Landroid/graphics/PointF;->x:F

    iget p1, v3, Landroid/graphics/PointF;->y:F

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v2, -0x3d380000    # -100.0f

    invoke-static {p1, v2, v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    iput p1, v3, Landroid/graphics/PointF;->y:F

    iget p1, v4, Landroid/graphics/PointF;->x:F

    invoke-static {p1, p3, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    iput p1, v4, Landroid/graphics/PointF;->x:F

    iget p1, v4, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO00o(FFF)F

    move-result p1

    iput p1, v4, Landroid/graphics/PointF;->y:F

    iget p3, v3, Landroid/graphics/PointF;->x:F

    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget v2, v4, Landroid/graphics/PointF;->x:F

    invoke-static {p3, v0, v2, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(FFFF)I

    move-result p1

    invoke-static {p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o(I)Ljava/lang/ref/WeakReference;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/animation/Interpolator;

    :cond_3
    if-eqz p3, :cond_4

    if-nez v1, :cond_5

    :cond_4
    iget p3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr p3, p2

    iget v0, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p2

    iget v1, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, p2

    iget v2, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p2

    invoke-static {p3, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    :try_start_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    move-object v7, v1

    goto :goto_1

    :cond_6
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0O0:Landroid/view/animation/Interpolator;

    move-object v7, p1

    :goto_1
    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0o;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v10, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooOOO0:Landroid/graphics/PointF;

    iput-object v11, p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;->OooOOO:Landroid/graphics/PointF;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "F",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
            "TT;>;)",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-direct {p1, p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO0O0/OooO00o/OooO00o/OooO0o;FLOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;Z)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            "F",
            "LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
            "TT;>;Z)",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-static {p1, p0, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0OO;)LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0OO:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0OO:Landroidx/collection/SparseArrayCompat;

    :cond_0
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0OO:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public static OooO00o(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    const-class v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooO00o(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    const-class v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;

    monitor-enter v0

    :try_start_0
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO0OO:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
