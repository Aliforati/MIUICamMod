.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

.field private final synthetic OooO0O0:Lio/reactivex/SingleEmitter;

.field private final synthetic OooO0OO:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;Lio/reactivex/SingleEmitter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO0O0:Lio/reactivex/SingleEmitter;

    iput-wide p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO0OO:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO00o:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO0O0:Lio/reactivex/SingleEmitter;

    iget-wide v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000OO/OooO0oo;->OooO0OO:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO00o(Lio/reactivex/SingleEmitter;JLjava/lang/Boolean;)V

    return-void
.end method
