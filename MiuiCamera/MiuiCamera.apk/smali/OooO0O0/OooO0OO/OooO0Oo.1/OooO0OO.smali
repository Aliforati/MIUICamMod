.class public final synthetic LOooO0O0/OooO0OO/OooO0Oo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/zxing/HandGestureDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/HandGestureDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO0Oo/OooO0OO;->OooO00o:Lcom/android/zxing/HandGestureDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO0Oo/OooO0OO;->OooO00o:Lcom/android/zxing/HandGestureDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {v0, p1}, Lcom/android/zxing/HandGestureDecoder;->OooO00o(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
