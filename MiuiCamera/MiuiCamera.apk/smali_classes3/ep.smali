.class public final Lep;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lep;


# instance fields
.field public final b:Let;

.field public final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lep;

    invoke-direct {v0}, Lep;-><init>()V

    sput-object v0, Lep;->a:Lep;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    iput-object v0, p0, Lep;->b:Let;

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Class;)Les;
    .locals 9

    const-class v0, Lde;

    const-string v1, "messageType"

    invoke-static {p1, v1}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les;

    if-nez v2, :cond_6

    iget-object v2, p0, Lep;->b:Let;

    invoke-static {p1}, Leu;->OooO00o(Ljava/lang/Class;)V

    check-cast v2, Ldz;

    iget-object v2, v2, Ldz;->a:Lef;

    invoke-interface {v2, p1}, Lef;->OooO00o(Ljava/lang/Class;)Lee;

    move-result-object v3

    invoke-interface {v3}, Lee;->OooO00o()Z

    move-result v2

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    sget-object v0, Leu;->c:Lfh;

    sget-object v2, Lct;->a:Lej;

    goto :goto_0

    :cond_0
    sget-object v0, Leu;->a:Lfh;

    invoke-static {}, Lct;->OooO00o()Lej;

    move-result-object v2

    :goto_0
    invoke-interface {v3}, Lee;->OooO0O0()Leh;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lel;->OooO00o(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_5

    :cond_1
    if-eqz v0, :cond_3

    invoke-static {v3}, Ldz;->OooO00o(Lee;)Z

    move-result v0

    sget-object v4, Len;->b:Lfs;

    sget-object v5, Ldv;->b:Ldv;

    sget-object v6, Leu;->c:Lfh;

    if-eqz v0, :cond_2

    sget-object v7, Lct;->a:Lej;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v8, Led;->b:Lff;

    goto :goto_4

    :cond_3
    invoke-static {v3}, Ldz;->OooO00o(Lee;)Z

    move-result v0

    sget-object v4, Len;->a:Lfs;

    sget-object v5, Ldv;->a:Ldv;

    if-eqz v0, :cond_4

    sget-object v6, Leu;->a:Lfh;

    invoke-static {}, Lct;->OooO00o()Lej;

    move-result-object v7

    goto :goto_3

    :cond_4
    sget-object v6, Leu;->b:Lfh;

    const/4 v7, 0x0

    :goto_3
    sget-object v8, Led;->a:Lff;

    :goto_4
    invoke-static/range {v3 .. v8}, Lek;->OooO00o(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_1

    :goto_5
    invoke-static {p1, v1}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schema"

    invoke-static {v2, v0}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Les;

    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    return-object p1

    :cond_6
    :goto_6
    return-object v2
.end method

.method public final OooO00o(Ljava/lang/Object;)Les;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p1

    return-object p1
.end method
