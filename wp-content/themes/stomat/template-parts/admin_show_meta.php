<table>
    <tr>
        <td colspan="2">
            <strong>
                <?php echo $this->name.' '.__("(можуть бути сортовані, або відключени якщо зняти галку)","stomat") ?>
            </strong>
            <br>
            <br>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div class="wrap_sortable_checkboxes" style="width: 100%;">
                <?php $this->show_post_type($field); ?>
            </div>
        </td>
    </tr>
</table>