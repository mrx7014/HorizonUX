.class Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslProgressBar;)V
    .locals 0

    .line 2214
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2215
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2218
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->sendAccessibilityEvent(I)V

    .line 2219
    return-void
.end method
