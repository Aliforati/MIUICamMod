.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;

    invoke-direct {v0}, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;-><init>()V

    sput-object v0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOo0O;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO0OO(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
