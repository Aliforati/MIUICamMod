.class public Leb;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO([BILdi;Lby;)I
    .locals 3

    check-cast p2, Ldw;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p3, Lby;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Leb;->OooO0O0([BILby;)I

    move-result p1

    iget-wide v1, p3, Lby;->b:J

    invoke-static {v1, v2}, Lcl;->OooO00o(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ldw;->OooO00o(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO00o(I[BIILby;)I
    .locals 2

    invoke-static {p0}, Lga;->OooO0O0(I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lga;->OooO00o(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Ldl;->OooO0OO()Ldl;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p4}, Leb;->OooO00o([BILby;)I

    move-result p2

    iget v0, p4, Lby;->a:I

    if-eq v0, p0, :cond_2

    invoke-static {v0, p1, p2, p3, p4}, Leb;->OooO00o(I[BIILby;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    :cond_3
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p1, p2, p4}, Leb;->OooO00o([BILby;)I

    move-result p0

    iget p1, p4, Lby;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_6
    invoke-static {p1, p2, p4}, Leb;->OooO0O0([BILby;)I

    move-result p0

    return p0

    :cond_7
    invoke-static {}, Ldl;->OooO0OO()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO00o(I[BIILdc;Lcq;Lby;)I
    .locals 8

    iget-object p4, p4, Ldc;->d:Lcu;

    ushr-int/lit8 p0, p0, 0x3

    invoke-virtual {p5}, Lcq;->OooO00o()Lfy;

    move-result-object v0

    sget-object v1, Lfy;->n:Lfy;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p5}, Lcq;->OooO00o()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {p1, p2, p6}, Leb;->OooO0O0([BILby;)I

    move-result p2

    iget-wide p0, p6, Lby;->b:J

    invoke-static {p0, p1}, Lcl;->OooO00o(J)J

    move-result-wide p0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, p2, p6}, Leb;->OooO00o([BILby;)I

    move-result p2

    iget p0, p6, Lby;->a:I

    invoke-static {p0}, Lcl;->OooO00o(I)I

    move-result p0

    goto/16 :goto_2

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-static {p1, p2, p6}, Leb;->OooO0o0([BILby;)I

    move-result p2

    goto :goto_0

    :pswitch_4
    sget-object p0, Lep;->a:Lep;

    iget-object v0, p5, Lcq;->c:Leh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p6}, Leb;->OooO00o(Les;[BIILby;)I

    move-result p2

    goto :goto_0

    :pswitch_5
    sget-object v0, Lep;->a:Lep;

    iget-object v1, p5, Lcq;->c:Leh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object v2

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 v6, p0, 0x4

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Leb;->OooO00o(Les;[BIIILby;)I

    move-result p2

    goto :goto_0

    :pswitch_6
    invoke-static {p1, p2, p6}, Leb;->OooO0OO([BILby;)I

    move-result p2

    :goto_0
    iget-object v2, p6, Lby;->c:Ljava/lang/Object;

    goto :goto_6

    :pswitch_7
    invoke-static {p1, p2, p6}, Leb;->OooO0O0([BILby;)I

    move-result p2

    iget-wide p0, p6, Lby;->b:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6

    :pswitch_8
    invoke-static {p1, p2}, Leb;->OooO00o([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :pswitch_9
    invoke-static {p1, p2}, Leb;->OooO0O0([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_5

    :pswitch_a
    invoke-static {p1, p2, p6}, Leb;->OooO00o([BILby;)I

    move-result p2

    iget p0, p6, Lby;->a:I

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :pswitch_b
    invoke-static {p1, p2, p6}, Leb;->OooO0O0([BILby;)I

    move-result p2

    iget-wide p0, p6, Lby;->b:J

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_6

    :pswitch_c
    invoke-static {p1, p2}, Leb;->OooO0Oo([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_4
    add-int/lit8 p2, p2, 0x4

    goto :goto_6

    :pswitch_d
    invoke-static {p1, p2}, Leb;->OooO0OO([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_5
    add-int/lit8 p2, p2, 0x8

    :goto_6
    invoke-virtual {p5}, Lcq;->OooO00o()Lfy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    goto :goto_7

    :cond_1
    iget-object p0, p5, Lcq;->d:Ldd;

    invoke-virtual {p4, p0}, Lcu;->OooO00o(Ldd;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0, v2}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    :goto_7
    iget-object p0, p5, Lcq;->d:Ldd;

    invoke-virtual {p4, p0, v2}, Lcu;->OooO00o(Ldd;Ljava/lang/Object;)V

    return p2

    :cond_3
    invoke-static {p1, p2, p6}, Leb;->OooO00o([BILby;)I

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO00o(I[BIILdi;Lby;)I
    .locals 2

    check-cast p4, Ldf;

    invoke-static {p1, p2, p5}, Leb;->OooO00o([BILby;)I

    move-result p2

    :goto_0
    iget v0, p5, Lby;->a:I

    invoke-virtual {p4, v0}, Ldf;->OooO0O0(I)V

    if-ge p2, p3, :cond_0

    invoke-static {p1, p2, p5}, Leb;->OooO00o([BILby;)I

    move-result v0

    iget v1, p5, Lby;->a:I

    if-ne p0, v1, :cond_0

    invoke-static {p1, v0, p5}, Leb;->OooO00o([BILby;)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static OooO00o(I[BIILfi;Lby;)I
    .locals 9

    invoke-static {p0}, Lga;->OooO0O0(I)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lga;->OooO00o(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Leb;->OooO00o([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lfi;->OooO00o(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Ldl;->OooO0OO()Ldl;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lfi;->OooO0OO()Lfi;

    move-result-object v7

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Leb;->OooO00o([BILby;)I

    move-result v3

    iget p2, p5, Lby;->a:I

    move v1, p2

    if-eq p2, v0, :cond_2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Leb;->OooO00o(I[BIILfi;Lby;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v3

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v1, v0, :cond_4

    invoke-virtual {p4, p0, v7}, Lfi;->OooO00o(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Ldl;->OooO0o0()Ldl;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Leb;->OooO00o([BILby;)I

    move-result p2

    iget p3, p5, Lby;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-eqz p3, :cond_6

    invoke-static {p1, p2, p3}, Lck;->OooO00o([BII)Lck;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p1, Lck;->b:Lck;

    :goto_1
    invoke-virtual {p4, p0, p1}, Lfi;->OooO00o(ILjava/lang/Object;)V

    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p1, p2}, Leb;->OooO0O0([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lfi;->OooO00o(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Leb;->OooO0O0([BILby;)I

    move-result p1

    iget-wide p2, p5, Lby;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lfi;->OooO00o(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Ldl;->OooO0OO()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO00o(I[BILby;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-gez v0, :cond_3

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_2

    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-gez v0, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    iput p0, p3, Lby;->a:I

    return v0

    :cond_1
    shl-int/lit8 p1, v0, 0x1c

    :goto_1
    or-int/2addr p0, p1

    iput p0, p3, Lby;->a:I

    return p2

    :cond_2
    shl-int/lit8 p1, p2, 0x15

    :goto_2
    or-int/2addr p0, p1

    iput p0, p3, Lby;->a:I

    return v0

    :cond_3
    shl-int/lit8 p1, v0, 0xe

    goto :goto_1

    :cond_4
    shl-int/lit8 p1, p2, 0x7

    goto :goto_2
.end method

.method public static OooO00o(Lea;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lea;->a:Lfy;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcu;->OooO00o(Lfy;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lea;->c:Lfy;

    const/4 p0, 0x2

    invoke-static {v0, p0, p2}, Lcu;->OooO00o(Lfy;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static OooO00o(Les;I[BIILdi;Lby;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Leb;->OooO00o(Les;[BIILby;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lby;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Leb;->OooO00o([BILby;)I

    move-result v0

    iget v1, p6, Lby;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Leb;->OooO00o(Les;[BIILby;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static OooO00o(Les;[BIIILby;)I
    .locals 8

    check-cast p0, Lek;

    invoke-virtual {p0}, Lek;->OooO00o()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lek;->OooO00o(Ljava/lang/Object;[BIIILby;)I

    move-result p1

    invoke-virtual {p0, v7}, Lek;->OooO0Oo(Ljava/lang/Object;)V

    iput-object v7, p5, Lby;->c:Ljava/lang/Object;

    return p1
.end method

.method public static OooO00o(Les;[BIILby;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Leb;->OooO00o(I[BILby;)I

    move-result v0

    iget p2, p4, Lby;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Les;->OooO00o()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Les;->OooO00o(Ljava/lang/Object;[BIILby;)V

    invoke-interface {p0, p3}, Les;->OooO0Oo(Ljava/lang/Object;)V

    iput-object p3, p4, Lby;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO00o([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static OooO00o([BILby;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lby;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Leb;->OooO00o(I[BILby;)I

    move-result p0

    return p0
.end method

.method public static OooO00o([BILdi;Lby;)I
    .locals 2

    check-cast p2, Ldf;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p3, Lby;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v1, p3, Lby;->a:I

    invoke-virtual {p2, v1}, Ldf;->OooO0O0(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO00o()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This should be running on the main thread."

    invoke-static {v0, v1}, Leb;->OooO00o(ZLjava/lang/String;)V

    return-void
.end method

.method public static OooO00o(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p1, Lea;->a:Lfy;

    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcu;->OooO00o(Lcn;ILjava/lang/Object;)V

    iget-object p1, p1, Lea;->c:Lfy;

    const/4 p1, 0x2

    invoke-static {p0, p1, p3}, Lcu;->OooO00o(Lcn;ILjava/lang/Object;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0}, Leb;->OooO00o(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static OooO00o(Ljava/lang/RuntimeException;)V
    .locals 2

    const-string v0, "Preconditions"

    const-string v1, "Precondition broken. Build is not strict; continuing..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static OooO00o(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Leb;->OooO00o(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static OooO0O0([BILby;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_0
    iput-wide v1, p2, Lby;->b:J

    return p1

    :cond_1
    iput-wide v1, p2, Lby;->b:J

    return v0
.end method

.method public static OooO0O0([BILdi;Lby;)I
    .locals 3

    check-cast p2, Ldw;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p3, Lby;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Leb;->OooO0O0([BILby;)I

    move-result p1

    iget-wide v1, p3, Lby;->b:J

    invoke-virtual {p2, v1, v2}, Ldw;->OooO00o(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0O0([BI)J
    .locals 7

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static OooO0OO([BI)D
    .locals 0

    invoke-static {p0, p1}, Leb;->OooO0O0([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static OooO0OO([BILby;)I
    .locals 3

    invoke-static {p0, p1, p2}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p2, Lby;->a:I

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lby;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_0
    const-string p0, ""

    iput-object p0, p2, Lby;->c:Ljava/lang/Object;

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0OO([BILdi;Lby;)I
    .locals 1

    check-cast p2, Ldf;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget p3, p3, Lby;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Leb;->OooO00o([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Ldf;->OooO0O0(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0Oo([BI)F
    .locals 0

    invoke-static {p0, p1}, Leb;->OooO00o([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static OooO0Oo([BILby;)I
    .locals 2

    invoke-static {p0, p1, p2}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p2, Lby;->a:I

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    sget-object v1, Lfx;->a:Lft;

    invoke-virtual {v1, p0, p1, v0}, Lft;->OooO0O0([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lby;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_0
    const-string p0, ""

    iput-object p0, p2, Lby;->c:Ljava/lang/Object;

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0Oo([BILdi;Lby;)I
    .locals 2

    check-cast p2, Ldw;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget p3, p3, Lby;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Leb;->OooO0O0([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ldw;->OooO00o(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0o([BILdi;Lby;)I
    .locals 2

    check-cast p2, Lcp;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget p3, p3, Lby;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Leb;->OooO0OO([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcp;->OooO00o(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0o0([BILby;)I
    .locals 2

    invoke-static {p0, p1, p2}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p2, Lby;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lck;->OooO00o([BII)Lck;

    move-result-object p0

    iput-object p0, p2, Lby;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_0
    sget-object p0, Lck;->b:Lck;

    iput-object p0, p2, Lby;->c:Ljava/lang/Object;

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Ldl;->OooO0O0()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0o0([BILdi;Lby;)I
    .locals 1

    check-cast p2, Lcx;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget p3, p3, Lby;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Leb;->OooO0Oo([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcx;->OooO00o(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0oO([BILdi;Lby;)I
    .locals 5

    check-cast p2, Lca;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p3, Lby;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Leb;->OooO0O0([BILby;)I

    move-result p1

    iget-wide v1, p3, Lby;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lca;->OooO00o(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method

.method public static OooO0oo([BILdi;Lby;)I
    .locals 2

    check-cast p2, Ldf;

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v0, p3, Lby;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Leb;->OooO00o([BILby;)I

    move-result p1

    iget v1, p3, Lby;->a:I

    invoke-static {v1}, Lcl;->OooO00o(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ldf;->OooO0O0(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0
.end method
