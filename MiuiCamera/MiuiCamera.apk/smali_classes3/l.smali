.class public final Ll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldh;


# static fields
.field public static final a:Ldh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll;

    invoke-direct {v0}, Ll;-><init>()V

    sput-object v0, Ll;->a:Ldh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(I)Z
    .locals 0

    invoke-static {p1}, Lm;->OooO00o(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
