import org.hibernate.dialect.MySQL5InnoDBDialect
import java.sql.Types

class BooleanFixDialect extends MySQL5InnoDBDialect {
   BooleanFixDialect() {
	  registerColumnType(Types.BIT, 'boolean')
   }
}
