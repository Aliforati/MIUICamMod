.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o000000;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->updateRenderDataAnyway()V

    return-void
.end method
