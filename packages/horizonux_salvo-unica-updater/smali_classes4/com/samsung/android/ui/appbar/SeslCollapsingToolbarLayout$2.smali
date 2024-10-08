.class Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "SeslCollapsingToolbarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

.field final synthetic val$toolbar_height:I


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iput p2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;->val$toolbar_height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$2;->val$toolbar_height:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 511
    return-void
.end method
